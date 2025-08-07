CREATE TABLE `users`
(
    `id`    varchar(200) NOT NULL COMMENT '用户ID',
    `state` int DEFAULT '0' COMMENT '状态（0默认）',
    PRIMARY KEY (`id`),
    KEY     `idx_state` (`state`) COMMENT '状态索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- 爬虫记录表
CREATE TABLE `records`
(
    `id`    varchar(200) NOT NULL COMMENT '记录ID',
    `title` varchar(200) DEFAULT NULL COMMENT '标题',
    `href`  varchar(250) DEFAULT NULL COMMENT '链接',
    `pay`   int          DEFAULT '0' COMMENT '是否需要会员身份',
    `state` int          DEFAULT '0' COMMENT '状态（0默认）',
    PRIMARY KEY (`id`),
    KEY     `idx_title` (`title`) COMMENT '标题索引',
    KEY     `idx_state` (`state`) COMMENT '状态索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='记录表';