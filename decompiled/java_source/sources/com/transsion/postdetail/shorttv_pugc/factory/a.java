package com.transsion.postdetail.shorttv_pugc.factory;

import com.transsion.moviedetail.fragment.SubjectListFragment;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements sm.g {
    @Override // sm.g
    public HashSet a() {
        HashSet hashSet = new HashSet();
        hashSet.add("shorts_unlock_config");
        hashSet.add("sa_post_video_auto_play");
        hashSet.add("room_home_video_play_mute");
        hashSet.add("stream_reward_intercept");
        hashSet.add("sa_for_you_mode");
        hashSet.add("sa_room_post_cache");
        hashSet.add("sa_room_post_cache_count");
        hashSet.add(SubjectListFragment.KEY_POST_EXPOSURE_PERCENT);
        hashSet.add("sb_lv_play_timeout");
        hashSet.add("sb_lv_play_timeout_dp");
        return hashSet;
    }
}
