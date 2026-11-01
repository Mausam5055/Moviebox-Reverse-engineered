package androidx.transition;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    public static i a(ViewGroup viewGroup) {
        android.support.v4.media.session.c.a(viewGroup.getTag(R$id.transition_current_scene));
        return null;
    }

    static void b(ViewGroup viewGroup, i iVar) {
        viewGroup.setTag(R$id.transition_current_scene, iVar);
    }
}
