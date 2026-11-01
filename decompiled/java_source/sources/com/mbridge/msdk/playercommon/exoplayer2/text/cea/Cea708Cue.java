package com.mbridge.msdk.playercommon.exoplayer2.text.cea;

import android.text.Layout;
import androidx.annotation.NonNull;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;

/* JADX INFO: loaded from: classes5.dex */
final class Cea708Cue extends Cue implements Comparable<Cea708Cue> {
    public static final int PRIORITY_UNSET = -1;
    public final int priority;

    public Cea708Cue(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13, boolean z10, int i14, int i15) {
        super(charSequence, alignment, f11, i11, i12, f12, i13, f13, z10, i14);
        this.priority = i15;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Cea708Cue cea708Cue) {
        int i11 = cea708Cue.priority;
        int i12 = this.priority;
        if (i11 < i12) {
            return -1;
        }
        return i11 > i12 ? 1 : 0;
    }
}
