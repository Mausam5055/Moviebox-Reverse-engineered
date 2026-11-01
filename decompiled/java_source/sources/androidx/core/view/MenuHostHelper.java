package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.p009lifecycle.Lifecycle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MenuHostHelper {
    private final Runnable mOnInvalidateMenuCallback;
    private final CopyOnWriteArrayList<MenuProvider> mMenuProviders = new CopyOnWriteArrayList<>();
    private final Map<MenuProvider, a> mProviderToLifecycleContainers = new HashMap();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lifecycle f8290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.p009lifecycle.r f8291b;

        a(Lifecycle lifecycle, androidx.p009lifecycle.r rVar) {
            this.f8290a = lifecycle;
            this.f8291b = rVar;
            lifecycle.a(rVar);
        }

        void a() {
            this.f8290a.d(this.f8291b);
            this.f8291b = null;
        }
    }

    public MenuHostHelper(Runnable runnable) {
        this.mOnInvalidateMenuCallback = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addMenuProvider$0(MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addMenuProvider$1(Lifecycle.State state, MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.upTo(state)) {
            addMenuProvider(menuProvider);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.downFrom(state)) {
            this.mMenuProviders.remove(menuProvider);
            this.mOnInvalidateMenuCallback.run();
        }
    }

    public void addMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.add(menuProvider);
        this.mOnInvalidateMenuCallback.run();
    }

    public void addMenuProvider(final MenuProvider menuProvider, androidx.p009lifecycle.u uVar) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = uVar.getLifecycle();
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new a(lifecycle, new androidx.p009lifecycle.r() { // from class: androidx.core.view.w
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(androidx.p009lifecycle.u uVar2, Lifecycle.Event event) {
                this.f8438a.lambda$addMenuProvider$0(menuProvider, uVar2, event);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(final MenuProvider menuProvider, androidx.p009lifecycle.u uVar, final Lifecycle.State state) {
        Lifecycle lifecycle = uVar.getLifecycle();
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new a(lifecycle, new androidx.p009lifecycle.r() { // from class: androidx.core.view.v
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(androidx.p009lifecycle.u uVar2, Lifecycle.Event event) {
                this.f8435a.lambda$addMenuProvider$1(state, menuProvider, uVar2, event);
            }
        }));
    }

    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onCreateMenu(menu, menuInflater);
        }
    }

    public void onMenuClosed(Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onMenuClosed(menu);
        }
    }

    public boolean onMenuItemSelected(MenuItem menuItem) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            if (it.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void onPrepareMenu(Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onPrepareMenu(menu);
        }
    }

    public void removeMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.remove(menuProvider);
        a aVarRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.mOnInvalidateMenuCallback.run();
    }
}
