CREATE TABLE chusan_game_event (
    id         BIGINT auto_increment PRIMARY KEY,
    end_date   DATETIME,
    start_date DATETIME,
    type       INTEGER  NOT NULL,
    enable     BOOLEAN  NOT NULL
);

CREATE TABLE chusan_game_charge (
    id              BIGINT auto_increment PRIMARY KEY,
    charge_id       INTEGER,
    end_date        DATETIME,
    order_id        INTEGER  NOT NULL,
    price           INTEGER  NOT NULL,
    sale_end_date   DATETIME,
    sale_price      INTEGER  NOT NULL,
    sale_start_date DATETIME,
    start_date      DATETIME
);

CREATE TABLE chusan_user_data (
    id BIGINT auto_increment PRIMARY KEY,
    user_name VARCHAR (255),
    level INTEGER,
    reincarnation_num INTEGER,
    exp VARCHAR (255),
    point BIGINT,
    total_point BIGINT,
    play_count INTEGER,
    multi_play_count INTEGER,
    player_rating INTEGER,
    highest_rating INTEGER,
    nameplate_id INTEGER,
    frame_id INTEGER,
    character_id INTEGER,
    trophy_id INTEGER,
    played_tutorial_bit INTEGER,
    first_tutorial_cancel_num INTEGER,
    master_tutorial_cancel_num INTEGER,
    total_map_num INTEGER,
    total_hi_score BIGINT,
    total_basic_high_score BIGINT,
    total_advanced_high_score BIGINT,
    total_expert_high_score BIGINT,
    total_master_high_score BIGINT,
    total_ultima_high_score BIGINT,
    event_watched_date DATETIME,
    friend_count INTEGER,
    first_game_id VARCHAR (255),
    first_rom_version VARCHAR (255),
    first_data_version VARCHAR (255),
    first_play_date DATETIME,
    last_game_id VARCHAR (255),
    last_rom_version VARCHAR (255),
    last_data_version VARCHAR (255),
    last_login_date DATETIME,
    last_play_date DATETIME,
    last_place_id INTEGER,
    last_place_name VARCHAR (255),
    last_region_id VARCHAR (255),
    last_region_name VARCHAR (255),
    last_all_net_id VARCHAR (255),
    last_client_id VARCHAR (255),
    last_country_code VARCHAR (255),
    user_name_ex VARCHAR (255),
    compatible_cm_version VARCHAR (255),
    medal INTEGER,
    map_icon_id INTEGER,
    voice_id INTEGER,
    avatar_wear INTEGER,
    avatar_head INTEGER,
    avatar_face INTEGER,
    avatar_skin INTEGER,
    avatar_item INTEGER,
    avatar_front INTEGER,
    avatar_back INTEGER,
    class_emblem_base INTEGER,
    class_emblem_medal INTEGER,
    stocked_grid_count INTEGER,
    ex_map_loop_count INTEGER,
    net_battle_play_count INTEGER,
    net_battle_win_count INTEGER,
    net_battle_lose_count INTEGER,
    net_battle_consecutive_win_count INTEGER,
    chara_illust_id INTEGER,
    skill_id INTEGER,
    over_power_point INTEGER,
    over_power_rate INTEGER,
    over_power_lower_rank INTEGER,
    avatar_point INTEGER,
    battle_rank_id INTEGER,
    battle_rank_point INTEGER,
    elite_rank_point INTEGER,
    net_battle1st_count INTEGER,
    net_battle2nd_count INTEGER,
    net_battle3rd_count INTEGER,
    net_battle4th_count INTEGER,
    net_battle_correction INTEGER,
    net_battle_err_cnt INTEGER,
    net_battle_host_err_cnt INTEGER,
    battle_reward_status INTEGER,
    battle_reward_index INTEGER,
    battle_reward_count INTEGER,
    ext1 INTEGER,
    ext2 INTEGER,
    ext3 INTEGER,
    ext4 INTEGER,
    ext5 INTEGER,
    ext6 INTEGER,
    ext7 INTEGER,
    ext8 INTEGER,
    ext9 INTEGER,
    ext10 INTEGER,
    ext_str1 VARCHAR (255),
    ext_str2 VARCHAR (255),
    ext_long1 BIGINT,
    ext_long2 BIGINT,
    rank_up_challenge_results VARCHAR (255),
    is_net_battle_host boolean,
    net_battle_end_state INTEGER,
    card_id BIGINT,
    constraint FKc23WucGD33TdiRfS
        foreign key (card_id) references sega_card (id)
);

CREATE TABLE chusan_user_activity (
    id          BIGINT auto_increment PRIMARY KEY,
    activity_id INTEGER,
    kind        INTEGER NOT NULL,
    param1      INTEGER NOT NULL,
    param2      INTEGER NOT NULL,
    param3      INTEGER NOT NULL,
    param4      INTEGER NOT NULL,
    sort_number INTEGER NOT NULL,
    user_id     BIGINT,
    constraint FKf5rvHXNuckmxrdg4
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_character (
    id             BIGINT auto_increment PRIMARY KEY,
    character_id   INTEGER NOT NULL,
    friendship_exp INTEGER NOT NULL,
    is_valid       BOOLEAN NOT NULL,
    is_new_mark    BOOLEAN NOT NULL,
    level          INTEGER NOT NULL,
    param1         INTEGER NOT NULL,
    param2         INTEGER NOT NULL,
    play_count     INTEGER NOT NULL,
    ex_max_lv      INTEGER NOT NULL,
    assign_illust  INTEGER NOT NULL,
    user_id        BIGINT,
    constraint FKiKbot6692sbjFf26
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_charge (
    id            BIGINT auto_increment PRIMARY KEY,
    charge_id     INTEGER  NOT NULL,
    param1        INTEGER  NOT NULL,
    param2        INTEGER  NOT NULL,
    param_date    DATETIME,
    purchase_date DATETIME,
    stock         INTEGER  NOT NULL,
    valid_date    DATETIME,
    user_id       BIGINT,
    constraint FKdNfjaTU2zHubyDPH
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_course (
    id             BIGINT auto_increment PRIMARY KEY,
    class_id       INTEGER  NOT NULL,
    course_id      INTEGER  NOT NULL,
    event_id       INTEGER  NOT NULL,
    is_all_justice BOOLEAN  NOT NULL,
    is_clear       BOOLEAN  NOT NULL,
    is_full_combo  BOOLEAN  NOT NULL,
    is_success     BOOLEAN  NOT NULL,
    last_play_date DATETIME,
    param1         INTEGER  NOT NULL,
    param2         INTEGER  NOT NULL,
    param3         INTEGER  NOT NULL,
    param4         INTEGER  NOT NULL,
    play_count     INTEGER  NOT NULL,
    theory_count   INTEGER,
    score_max      INTEGER  NOT NULL,
    score_rank     INTEGER  NOT NULL,
    order_id       INTEGER,
    player_rating  INTEGER,
    user_id        BIGINT,
    constraint FKaWDgdwc4AzsXBPkR
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_duel (
    id             BIGINT auto_increment PRIMARY KEY,
    duel_id        INTEGER  NOT NULL,
    is_clear       BOOLEAN  NOT NULL,
    last_play_date DATETIME,
    param1         INTEGER  NOT NULL,
    param2         INTEGER  NOT NULL,
    param3         INTEGER  NOT NULL,
    param4         INTEGER  NOT NULL,
    point          INTEGER  NOT NULL,
    progress       INTEGER  NOT NULL,
    user_id        BIGINT,
    constraint FKjCoYYUP9CQkMonvQ
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_game_option (
    id BIGINT auto_increment PRIMARY KEY,
    bg_info INTEGER NOT NULL,
    field_color INTEGER NOT NULL,
    guide_sound INTEGER NOT NULL,
    sound_effect INTEGER NOT NULL,
    guide_line INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    option_set INTEGER NOT NULL,
    matching INTEGER NOT NULL,
    judge_pos INTEGER NOT NULL,
    rating INTEGER NOT NULL,
    judge_critical INTEGER NOT NULL,
    judge_justice INTEGER NOT NULL,
    judge_attack INTEGER NOT NULL,
    headphone INTEGER NOT NULL,
    player_level INTEGER NOT NULL,
    success_tap INTEGER NOT NULL,
    success_ex_tap INTEGER NOT NULL,
    success_slide_hold INTEGER NOT NULL,
    success_air INTEGER NOT NULL,
    success_flick INTEGER NOT NULL,
    success_skill INTEGER NOT NULL,
    success_tap_timbre INTEGER NOT NULL,
    privacy INTEGER NOT NULL,
    mirror_fumen INTEGER NOT NULL,
    select_music_filter_lv INTEGER NOT NULL,
    sort_music_filter_lv INTEGER NOT NULL,
    sort_music_genre INTEGER NOT NULL,
    category_detail INTEGER NOT NULL,
    judge_timing_offset INTEGER NOT NULL,
    play_timing_offset INTEGER NOT NULL,
    field_wall_position INTEGER NOT NULL,
    result_voice_short INTEGER NOT NULL,
    notes_thickness INTEGER NOT NULL,
    judge_append_se INTEGER NOT NULL,
    track_skip INTEGER NOT NULL,
    hard_judge INTEGER NOT NULL,
    speed_120 INTEGER NOT NULL,
    field_wall_position_120 INTEGER NOT NULL,
    play_timing_offset_120 INTEGER NOT NULL,
    judge_timing_offset_120 INTEGER NOT NULL,
    ext1 INTEGER NOT NULL,
    ext2 INTEGER NOT NULL,
    ext3 INTEGER NOT NULL,
    ext4 INTEGER NOT NULL,
    ext5 INTEGER NOT NULL,
    ext6 INTEGER NOT NULL,
    ext7 INTEGER NOT NULL,
    ext8 INTEGER NOT NULL,
    ext9 INTEGER NOT NULL,
    ext10 INTEGER NOT NULL,
    user_id BIGINT,
    constraint FKycpxSx4dCL7Lqg79
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_general_data (
    id             BIGINT auto_increment PRIMARY KEY,
    property_key   VARCHAR NOT NULL,
    property_value VARCHAR NOT NULL,
    user_id        BIGINT,
    constraint FKm4k7mAMRbn6TRj3N
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_item (
    id        BIGINT auto_increment PRIMARY KEY,
    is_valid  BOOLEAN NOT NULL,
    item_id   INTEGER NOT NULL,
    item_kind INTEGER NOT NULL,
    stock     INTEGER NOT NULL,
    user_id   BIGINT,
    constraint FKi2DMppnreWLXFZpR
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_map_area (
    id           BIGINT auto_increment PRIMARY KEY,
    is_clear     BOOLEAN NOT NULL,
    is_locked     BOOLEAN NOT NULL,
    map_area_id       BOOLEAN NOT NULL,
    position     INTEGER NOT NULL,
    rate         INTEGER NOT NULL,
    status_count INTEGER NOT NULL,
    remain_grid_count INTEGER NOT NULL,
    user_id      BIGINT,
    constraint FKvd9cgwBT5UhMT68G
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_music_detail (
    id                BIGINT auto_increment PRIMARY KEY,
    full_chain        INTEGER NOT NULL,
    is_all_justice    BOOLEAN NOT NULL,
    is_full_combo     BOOLEAN NOT NULL,
    is_lock           BOOLEAN NOT NULL,
    is_success        BOOLEAN NOT NULL,
    level             INTEGER NOT NULL,
    max_chain         INTEGER NOT NULL,
    max_combo_count   INTEGER NOT NULL,
    miss_count        INTEGER NOT NULL,
    music_id          INTEGER NOT NULL,
    play_count        INTEGER NOT NULL,
    theory_count      INTEGER,
    ext1              INTEGER,
    score_max         INTEGER NOT NULL,
    score_rank        INTEGER NOT NULL,
    user_id           BIGINT,
    constraint FKjytSU5b3AxKZ55P2
        foreign key (user_id) references chusan_user_data (id)
);

CREATE TABLE chusan_user_playlog (
    id                  BIGINT auto_increment PRIMARY KEY,
    rom_version         VARCHAR (255),
    character_id        INTEGER       NOT NULL,
    chara_illust_id     INTEGER       NOT NULL,
    custom_id           INTEGER       NOT NULL,
    common_id           INTEGER       NOT NULL,
    event_id            INTEGER       NOT NULL,
    full_chain_kind     INTEGER       NOT NULL,
    is_all_justice      BOOLEAN       NOT NULL,
    is_clear            BOOLEAN       NOT NULL,
    is_continue         BOOLEAN       NOT NULL,
    is_free_to_play     BOOLEAN       NOT NULL,
    is_full_combo       BOOLEAN       NOT NULL,
    is_new_record       BOOLEAN       NOT NULL,
    judge_attack        INTEGER       NOT NULL,
    judge_critical      INTEGER       NOT NULL,
    judge_guilty        INTEGER       NOT NULL,
    judge_justice       INTEGER       NOT NULL,
    judge_heaven        INTEGER       NOT NULL,
    level               INTEGER       NOT NULL,
    max_chain           INTEGER       NOT NULL,
    max_combo           INTEGER       NOT NULL,
    music_id            INTEGER       NOT NULL,
    order_id            INTEGER       NOT NULL,
    place_id            INTEGER       NOT NULL,
    place_name          VARCHAR (255),
    play_date           DATETIME,
    play_kind           INTEGER       NOT NULL,
    played_custom1      INTEGER       NOT NULL,
    played_custom2      INTEGER       NOT NULL,
    played_custom3      INTEGER       NOT NULL,
    played_music_level1 INTEGER       NOT NULL,
    played_music_level2 INTEGER       NOT NULL,
    played_music_level3 INTEGER       NOT NULL,
    played_user_id1     INTEGER       NOT NULL,
    played_user_id2     INTEGER       NOT NULL,
    played_user_id3     INTEGER       NOT NULL,
    played_user_name1   VARCHAR (255),
    played_user_name2   VARCHAR (255),
    played_user_name3   VARCHAR (255),
    player_rating       INTEGER       NOT NULL,
    rank                INTEGER       NOT NULL,
    rate_air            INTEGER       NOT NULL,
    rate_flick          INTEGER       NOT NULL,
    rate_hold           INTEGER       NOT NULL,
    rate_slide          INTEGER       NOT NULL,
    rate_tap            INTEGER       NOT NULL,
    score               INTEGER       NOT NULL,
    skill_effect        INTEGER       NOT NULL,
    skill_id            INTEGER       NOT NULL,
    skill_level         INTEGER       NOT NULL,
    sort_number         INTEGER       NOT NULL,
    track               INTEGER       NOT NULL,
    user_play_date      DATETIME,
    user_id             BIGINT,
    constraint FKt6VM3gn63tz4Tghc
        foreign key (user_id) references chusan_user_data (id)
);
