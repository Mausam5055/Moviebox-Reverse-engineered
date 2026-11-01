package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.tools.g0;

/* JADX INFO: loaded from: classes5.dex */
public class SoundImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f34643a;

    public SoundImageView(Context context) {
        super(context);
        this.f34643a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34643a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34643a = true;
    }

    public boolean getStatus() {
        return this.f34643a;
    }

    public void setSoundStatus(boolean z10) {
        this.f34643a = z10;
        if (z10) {
            setImageResource(g0.a(getContext(), "mbridge_reward_sound_open", "drawable"));
        } else {
            setImageResource(g0.a(getContext(), "mbridge_reward_sound_close", "drawable"));
        }
    }
}
