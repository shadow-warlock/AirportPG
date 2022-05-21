CREATE USER dispatcher WITH PASSWORD 'dispatcher228';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "dispatcher";
GRANT SELECT, UPDATE, INSERT ON public.flight TO "dispatcher";
