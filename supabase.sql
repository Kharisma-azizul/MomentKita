-- Jalankan di Supabase > SQL Editor

create table if not exists photos(
  id bigint generated always as identity primary key,
  album text,
  name text,
  path text,
  filter text,
  created_at timestamptz default now()
);

alter table photos enable row level security;
create policy "baca" on photos for select using (true);
create policy "tulis" on photos for insert with check (true);

insert into storage.buckets(id, name, public) values ('photos', 'photos', true);
create policy "baca foto" on storage.objects for select using (bucket_id = 'photos');
create policy "unggah foto" on storage.objects for insert with check (bucket_id = 'photos');
