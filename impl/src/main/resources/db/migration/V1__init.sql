CREATE TABLE preferences (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY,
    principal_id VARCHAR(255) NOT NULL,
    talk_id VARCHAR(16) NOT NULL,
    version INT NOT NULL DEFAULT 0,
);
ALTER TABLE preferences ADD CONSTRAINT unique_principal_talk UNIQUE (principal_id, talk_id);