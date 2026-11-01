package com.transsion.baseui.music;

import android.text.TextUtils;
import com.google.common.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class MusicReport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MusicReport f43473a = new MusicReport();

    private MusicReport() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List b() {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("music_play_duration", "");
        if (TextUtils.isEmpty(string)) {
            return new ArrayList();
        }
        Type type = new TypeToken<List<n>>() { // from class: com.transsion.baseui.music.MusicReport$getLocalHistoryList$personListType$1
        }.getType();
        Intrinsics.g(type, "getType(...)");
        Object objE = com.blankj.utilcode.util.o.e(string, type);
        Intrinsics.e(objE);
        return (List) objE;
    }

    public final void c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<n> listB = f43473a.b();
            if (listB.isEmpty()) {
                return;
            }
            for (n nVar : listB) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("subject_id", String.valueOf(nVar.h()));
                linkedHashMap.put("trace_id", String.valueOf(nVar.d()));
                linkedHashMap.put("ops", String.valueOf(nVar.e()));
                linkedHashMap.put("play_duration", String.valueOf(nVar.f()));
                linkedHashMap.put("total_duration", String.valueOf(nVar.i()));
                linkedHashMap.put("video_bitrate", String.valueOf(nVar.j()));
                linkedHashMap.put("audio_bitrate", String.valueOf(nVar.a()));
                linkedHashMap.put("float_play_duration", String.valueOf(nVar.b()));
                linkedHashMap.put("in_bg_play_duration", String.valueOf(nVar.c()));
                hj.i.f64505a.H("music_play", "music_play", nVar.f(), linkedHashMap);
                com.transsion.player.mediasession.i.f48408a.a("MusicReport --> report() --> 上报播放时长 = " + linkedHashMap);
                com.transsion.baselib.report.launch.b.f43370a.b().remove("music_play_duration");
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.player.mediasession.i.f48408a.b("MusicReport --> report() --> it = " + thM457exceptionOrNullimpl);
    }

    public final void d(n musicPlayDurationBean) {
        Intrinsics.h(musicPlayDurationBean, "musicPlayDurationBean");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new MusicReport$saveLocal$1(musicPlayDurationBean, null), 3, null);
    }
}
