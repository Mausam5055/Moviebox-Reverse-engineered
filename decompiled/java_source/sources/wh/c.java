package wh;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements vh.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f77686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final vh.c f77687b;

    public c(int i11, vh.c cVar) {
        this.f77686a = i11;
        this.f77687b = cVar;
    }

    @Override // vh.c
    public View createView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(this.f77686a, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    @Override // vh.c
    public int getGravity() {
        vh.c cVar = this.f77687b;
        if (cVar != null) {
            return cVar.getGravity();
        }
        return 17;
    }

    @Override // vh.c
    public float getHorizontalMargin() {
        vh.c cVar = this.f77687b;
        if (cVar != null) {
            return cVar.getHorizontalMargin();
        }
        return 0.0f;
    }

    @Override // vh.c
    public float getVerticalMargin() {
        vh.c cVar = this.f77687b;
        if (cVar != null) {
            return cVar.getVerticalMargin();
        }
        return 0.0f;
    }

    @Override // vh.c
    public int getXOffset() {
        vh.c cVar = this.f77687b;
        if (cVar != null) {
            return cVar.getXOffset();
        }
        return 0;
    }

    @Override // vh.c
    public int getYOffset() {
        vh.c cVar = this.f77687b;
        if (cVar != null) {
            return cVar.getYOffset();
        }
        return 0;
    }
}
