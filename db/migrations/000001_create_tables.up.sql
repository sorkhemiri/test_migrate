CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE tenants (
  id UUID PRIMARY KEY NOT NULL default uuid_generate_v4(),
  name VARCHAR(250),
  pe_tenant_id TEXT default NULL
);

CREATE TABLE users (
  id UUID PRIMARY KEY NOT NULL default uuid_generate_v4(),
  email VARCHAR(250) NOT NULL,
  tenant_id UUID NOT NULL,

  CONSTRAINT tenant_id_fk FOREIGN KEY (tenant_id) REFERENCES tenants(id)
);
