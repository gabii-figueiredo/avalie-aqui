-- Cole isto no Supabase: SQL Editor > New query > Run

create table avaliacoes (
    id bigint generated always as identity primary key,
    apresentacao text not null,
    nota int not null check (nota between 1 and 5),
    criado_em timestamptz not null default now()
);

-- Trabalho escolar: sem login, qualquer pessoa pode enviar e ver.
alter table avaliacoes disable row level security;
