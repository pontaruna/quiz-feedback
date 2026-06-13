BEGIN TRANSACTION;
CREATE TABLE answer_logs (
        id           INTEGER PRIMARY KEY AUTOINCREMENT,
        play_log_id  INTEGER REFERENCES play_logs(id),
        question_id  INTEGER,
        player_name  TEXT,
        answer       TEXT,
        is_correct   INTEGER,
        buzz_time_ms INTEGER,
        buzz_order   INTEGER,
        points       INTEGER,
        answered_at  TEXT
    );
INSERT INTO "answer_logs" VALUES(49,5,437,'Ponta','B',1,4744,1,7,'2026-06-13T03:31:29.255641+00:00');
INSERT INTO "answer_logs" VALUES(50,5,43,'Ponta','C',1,4745,1,7,'2026-06-13T03:31:45.098434+00:00');
INSERT INTO "answer_logs" VALUES(51,5,43,'Testplayer','D',0,7758,2,0,'2026-06-13T03:31:45.098434+00:00');
INSERT INTO "answer_logs" VALUES(52,5,150,'Ponta','C',1,8031,1,7,'2026-06-13T03:32:03.447307+00:00');
INSERT INTO "answer_logs" VALUES(53,5,256,'Ponta',NULL,0,9753,1,0,'2026-06-13T03:32:23.066342+00:00');
INSERT INTO "answer_logs" VALUES(54,5,281,'Ponta',NULL,0,8109,1,0,'2026-06-13T03:32:41.345469+00:00');
INSERT INTO "answer_logs" VALUES(55,5,61,'Ponta',NULL,0,4676,1,0,'2026-06-13T03:32:59.525552+00:00');
INSERT INTO "answer_logs" VALUES(56,5,336,'Ponta',NULL,0,6508,1,0,'2026-06-13T03:33:17.871733+00:00');
INSERT INTO "answer_logs" VALUES(57,5,456,'Ponta','D',1,7612,1,7,'2026-06-13T03:33:35.796939+00:00');
INSERT INTO "answer_logs" VALUES(58,5,242,'Ponta','B',1,6180,1,7,'2026-06-13T03:33:54.486646+00:00');
INSERT INTO "answer_logs" VALUES(59,5,252,'Ponta','A',1,8743,1,7,'2026-06-13T03:34:12.745015+00:00');
CREATE TABLE invalid_reports (
        id          INTEGER PRIMARY KEY AUTOINCREMENT,
        question_id INTEGER,
        play_log_id INTEGER REFERENCES play_logs(id),
        player_name TEXT,
        reported_at TEXT    DEFAULT (datetime('now'))
    );
COMMIT;
