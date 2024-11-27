create policy "Give users access to own folder 34_0"
on "storage"."objects"
as permissive
for select
to authenticated
using (((bucket_id = 'p'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));


create policy "Give users access to own folder 34_1"
on "storage"."objects"
as permissive
for insert
to authenticated
with check (((bucket_id = 'p'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));


create policy "Give users access to own folder 34_2"
on "storage"."objects"
as permissive
for delete
to authenticated
using (((bucket_id = 'p'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));


create policy "Give users access to own folder 34_3"
on "storage"."objects"
as permissive
for update
to authenticated
using (((bucket_id = 'p'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));



