CREATE USER passenger WITH PASSWORD 'passenger228';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "passenger";
GRANT SELECT, UPDATE, INSERT ON public.passenger TO "passenger";
GRANT SELECT, UPDATE, INSERT ON public.ticket TO "passenger";
