-- Medicare Provider Reimbursement (Clean Table)
-- Source: CMS Medicare Physician & Other Practitioners (2023)

DROP TABLE IF EXISTS medicare_provider_clean;

CREATE TABLE medicare_provider_clean (
    npi BIGINT PRIMARY KEY,
    provider_state CHAR(2),
    provider_type TEXT,

    total_hcpcs_codes INTEGER,
    total_beneficiaries INTEGER,
    total_services NUMERIC(12,2),

    total_submitted_charges NUMERIC(14,2),
    total_allowed_amount NUMERIC(14,2),
    total_medicare_payment NUMERIC(14,2),

    avg_beneficiary_age NUMERIC(4,1)
);
