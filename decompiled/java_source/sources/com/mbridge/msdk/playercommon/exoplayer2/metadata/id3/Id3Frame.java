package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Id3Frame implements Metadata.Entry {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final String f36783id;

    public Id3Frame(String str) {
        this.f36783id = (String) Assertions.checkNotNull(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f36783id;
    }
}
