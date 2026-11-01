package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R$styleable;
import androidx.fragment.app.strictmode.FragmentStrictMode;

/* JADX INFO: loaded from: classes.dex */
class j implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final FragmentManager f9438a;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f9439a;

        a(u uVar) {
            this.f9439a = uVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentK = this.f9439a.k();
            this.f9439a.m();
            SpecialEffectsController.n((ViewGroup) fragmentK.mView.getParent(), j.this.f9438a).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    j(FragmentManager fragmentManager) {
        this.f9438a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        u uVarX;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f9438a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R$styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !h.isFragmentClass(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id2 = view != null ? view.getId() : 0;
        if (id2 == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentJ0 = resourceId != -1 ? this.f9438a.j0(resourceId) : null;
        if (fragmentJ0 == null && string != null) {
            fragmentJ0 = this.f9438a.k0(string);
        }
        if (fragmentJ0 == null && id2 != -1) {
            fragmentJ0 = this.f9438a.j0(id2);
        }
        if (fragmentJ0 == null) {
            fragmentJ0 = this.f9438a.w0().instantiate(context.getClassLoader(), attributeValue);
            fragmentJ0.mFromLayout = true;
            fragmentJ0.mFragmentId = resourceId != 0 ? resourceId : id2;
            fragmentJ0.mContainerId = id2;
            fragmentJ0.mTag = string;
            fragmentJ0.mInLayout = true;
            FragmentManager fragmentManager = this.f9438a;
            fragmentJ0.mFragmentManager = fragmentManager;
            fragmentJ0.mHost = fragmentManager.z0();
            fragmentJ0.onInflate(this.f9438a.z0().f(), attributeSet, fragmentJ0.mSavedFragmentState);
            uVarX = this.f9438a.j(fragmentJ0);
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Fragment " + fragmentJ0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            if (fragmentJ0.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
            }
            fragmentJ0.mInLayout = true;
            FragmentManager fragmentManager2 = this.f9438a;
            fragmentJ0.mFragmentManager = fragmentManager2;
            fragmentJ0.mHost = fragmentManager2.z0();
            fragmentJ0.onInflate(this.f9438a.z0().f(), attributeSet, fragmentJ0.mSavedFragmentState);
            uVarX = this.f9438a.x(fragmentJ0);
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragmentJ0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        FragmentStrictMode.g(fragmentJ0, viewGroup);
        fragmentJ0.mContainer = viewGroup;
        uVarX.m();
        uVarX.j();
        View view2 = fragmentJ0.mView;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentJ0.mView.getTag() == null) {
            fragmentJ0.mView.setTag(string);
        }
        fragmentJ0.mView.addOnAttachStateChangeListener(new a(uVarX));
        return fragmentJ0.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
