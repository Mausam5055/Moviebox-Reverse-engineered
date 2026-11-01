package com.transsion.moviedetailapi;

import com.transsion.baseui.R$drawable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {
    public static final int a(Integer num) {
        int value = SubjectType.AUDIO.getValue();
        if (num != null && num.intValue() == value) {
            return R$drawable.ic_tag_audio;
        }
        int value2 = SubjectType.MUSIC.getValue();
        if (num != null && num.intValue() == value2) {
            return R$drawable.ic_tag_music;
        }
        int value3 = SubjectType.TV.getValue();
        if (num != null && num.intValue() == value3) {
            return R$drawable.ic_tag_tv;
        }
        int value4 = SubjectType.SHORT_TV.getValue();
        if (num != null && num.intValue() == value4) {
            return R$drawable.ic_tag_short_tv;
        }
        int value5 = SubjectType.EDUCATION.getValue();
        if (num != null && num.intValue() == value5) {
            return R$drawable.ic_tag_edu;
        }
        int value6 = SubjectType.SPORT.getValue();
        if (num != null && num.intValue() == value6) {
            return R$drawable.ic_tag_sport;
        }
        int value7 = SubjectType.MOVIE.getValue();
        if (num != null && num.intValue() == value7) {
            return R$drawable.ic_tag_movie;
        }
        return (num != null && num.intValue() == SubjectType.OUTSIDE_FILE.getValue()) ? R$drawable.ic_tag_local_file : R$drawable.ic_tag_video_def;
    }
}
