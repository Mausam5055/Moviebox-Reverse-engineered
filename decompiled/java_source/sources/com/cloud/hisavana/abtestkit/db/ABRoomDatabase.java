package com.cloud.hisavana.abtestkit.db;

import androidx.room.RoomDatabase;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import v6.m;
import v6.s;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class ABRoomDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile ABRoomDatabase f21314p;

    public abstract m g0();

    public abstract s h0();
}
