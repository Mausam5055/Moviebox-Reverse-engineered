package androidx.core.view;

import android.annotation.SuppressLint;
import androidx.p009lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
public interface MenuHost {
    void addMenuProvider(MenuProvider menuProvider);

    void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar);

    @SuppressLint({"LambdaLast"})
    void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.State state);

    void invalidateMenu();

    void removeMenuProvider(MenuProvider menuProvider);
}
