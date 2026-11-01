package hs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements gs.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final gs.c f64837b;

    public c(int i11, gs.c cVar) {
        this.f64836a = i11;
        this.f64837b = cVar;
    }

    @Override // gs.c
    public View createView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(this.f64836a, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    @Override // gs.c
    public int getGravity() {
        gs.c cVar = this.f64837b;
        if (cVar != null) {
            return cVar.getGravity();
        }
        return 17;
    }

    @Override // gs.c
    public float getHorizontalMargin() {
        gs.c cVar = this.f64837b;
        if (cVar != null) {
            return cVar.getHorizontalMargin();
        }
        return 0.0f;
    }

    @Override // gs.c
    public float getVerticalMargin() {
        gs.c cVar = this.f64837b;
        if (cVar != null) {
            return cVar.getVerticalMargin();
        }
        return 0.0f;
    }

    @Override // gs.c
    public int getXOffset() {
        gs.c cVar = this.f64837b;
        if (cVar != null) {
            return cVar.getXOffset();
        }
        return 0;
    }

    @Override // gs.c
    public int getYOffset() {
        gs.c cVar = this.f64837b;
        if (cVar != null) {
            return cVar.getYOffset();
        }
        return 0;
    }
}
