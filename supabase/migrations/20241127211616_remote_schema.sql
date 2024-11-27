create policy "Give users access to own folder 2q_0"
on "storage"."objects"
as permissive
for delete
to authenticated
using (((bucket_id = 'b'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));


create policy "Give users access to own folder 2r_0"
on "storage"."objects"
as permissive
for update
to authenticated
using (((bucket_id = 'c'::text) AND (( SELECT (auth.uid())::text AS uid) = (storage.foldername(name))[1])));



