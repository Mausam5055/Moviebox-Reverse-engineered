package com.transsion.publish.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes6.dex */
public class MatchParentVideoView extends VideoView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f50645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f50646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f50648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f50649e;

    public MatchParentVideoView(Context context) {
        this(context, null);
    }

    public MatchParentVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MatchParentVideoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f50645a = 0;
        this.f50646b = 0;
        this.f50647c = 0;
        this.f50648d = 0;
        this.f50649e = 0;
    }

    public int getVideoHeight() {
        return this.f50646b;
    }

    public int getVideoWidth() {
        return this.f50645a;
    }

    @Override // android.widget.VideoView
    public void setVideoPath(String str) {
        super.setVideoPath(str);
    }
}
