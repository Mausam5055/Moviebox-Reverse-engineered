package com.transsion.videodetail.music.adapter;

import android.text.TextUtils;
import androidx.recyclerview.widget.DiffUtil;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends DiffUtil.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f57722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f57723b;

    public b(List oldList, List newList) {
        Intrinsics.h(oldList, "oldList");
        Intrinsics.h(newList, "newList");
        this.f57722a = oldList;
        this.f57723b = newList;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.a
    public boolean a(int i11, int i12) {
        return Intrinsics.c(this.f57722a.get(i11), this.f57723b.get(i12));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.a
    public boolean b(int i11, int i12) {
        MusicLikedDbBean musicLikedDbBean = ((MusicLikedMultiItemEntity) this.f57722a.get(i11)).getMusicLikedDbBean();
        String subjectId = musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null;
        MusicLikedDbBean musicLikedDbBean2 = ((MusicLikedMultiItemEntity) this.f57723b.get(i12)).getMusicLikedDbBean();
        return TextUtils.equals(subjectId, musicLikedDbBean2 != null ? musicLikedDbBean2.getSubjectId() : null);
    }

    @Override // androidx.recyclerview.widget.DiffUtil.a
    public int d() {
        return this.f57723b.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.a
    public int e() {
        return this.f57722a.size();
    }
}
