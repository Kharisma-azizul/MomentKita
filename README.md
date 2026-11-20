# Album Bersama

Website album foto acara: tamu masuk dengan nama, memotret atau unggah foto, pakai filter, dan host bisa mencetak QR berbingkai.

Dibangun dengan satu file HTML, di-host di GitHub Pages, dengan penyimpanan gratis dari Supabase.

## Isi repo
- `index.html` : seluruh website
- `supabase.sql` : tabel dan aturan akses untuk Supabase
- `.nojekyll` : supaya GitHub Pages menyajikan file apa adanya

## Pemasangan
1. Buat project di [supabase.com](https://supabase.com), lalu jalankan `supabase.sql` di SQL Editor.
2. Di `index.html`, isi `SUPA_URL` dan `SUPA_KEY` dengan Project URL dan **anon public key** (Project Settings > API). Jangan pakai service_role key.
3. Di GitHub: Settings > Pages > Deploy from a branch > `main` / root.
4. Buka `https://username.github.io/nama-repo/`.

## Album per acara
Tambahkan `?a=namaacara` di alamat, contoh `.../nama-repo/?a=pernikahan-rina`. QR otomatis mengikuti alamat tersebut.
