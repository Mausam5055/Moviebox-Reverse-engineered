package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ListFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f9394a = new Handler();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f9395b = new Runnable() { // from class: androidx.fragment.app.ListFragment.1
        @Override // java.lang.Runnable
        public void run() {
            ListView listView = ListFragment.this.f9398e;
            listView.focusableViewAvailable(listView);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AdapterView.OnItemClickListener f9396c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ListAdapter f9397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ListView f9398e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    View f9399f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f9400g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f9401h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f9402i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    CharSequence f9403j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f9404k;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
            ListFragment.this.W((ListView) adapterView, view, i11, j11);
        }
    }

    private void V() {
        if (this.f9398e != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.f9398e = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            this.f9400g = textView;
            if (textView == null) {
                this.f9399f = view.findViewById(R.id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.f9401h = view.findViewById(16711682);
            this.f9402i = view.findViewById(16711683);
            View viewFindViewById = view.findViewById(R.id.list);
            if (!(viewFindViewById instanceof ListView)) {
                if (viewFindViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) viewFindViewById;
            this.f9398e = listView;
            View view2 = this.f9399f;
            if (view2 != null) {
                listView.setEmptyView(view2);
            } else {
                CharSequence charSequence = this.f9403j;
                if (charSequence != null) {
                    this.f9400g.setText(charSequence);
                    this.f9398e.setEmptyView(this.f9400g);
                }
            }
        }
        this.f9404k = true;
        this.f9398e.setOnItemClickListener(this.f9396c);
        ListAdapter listAdapter = this.f9397d;
        if (listAdapter != null) {
            this.f9397d = null;
            X(listAdapter);
        } else if (this.f9401h != null) {
            Y(false, false);
        }
        this.f9394a.post(this.f9395b);
    }

    private void Y(boolean z10, boolean z11) {
        V();
        View view = this.f9401h;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.f9404k == z10) {
            return;
        }
        this.f9404k = z10;
        if (z10) {
            if (z11) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
                this.f9402i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            } else {
                view.clearAnimation();
                this.f9402i.clearAnimation();
            }
            this.f9401h.setVisibility(8);
            this.f9402i.setVisibility(0);
            return;
        }
        if (z11) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            this.f9402i.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        } else {
            view.clearAnimation();
            this.f9402i.clearAnimation();
        }
        this.f9401h.setVisibility(0);
        this.f9402i.setVisibility(8);
    }

    public void W(ListView listView, View view, int i11, long j11) {
    }

    public void X(ListAdapter listAdapter) {
        boolean z10 = this.f9397d != null;
        this.f9397d = listAdapter;
        ListView listView = this.f9398e;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.f9404k || z10) {
                return;
            }
            Y(true, requireView().getWindowToken() != null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context contextRequireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(contextRequireContext);
        LinearLayout linearLayout = new LinearLayout(contextRequireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(contextRequireContext, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(contextRequireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(contextRequireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(contextRequireContext);
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f9394a.removeCallbacks(this.f9395b);
        this.f9398e = null;
        this.f9404k = false;
        this.f9402i = null;
        this.f9401h = null;
        this.f9399f = null;
        this.f9400g = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        V();
    }
}
