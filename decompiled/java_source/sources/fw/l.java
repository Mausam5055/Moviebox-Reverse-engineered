package fw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.ProfileSettingTitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

/* JADX INFO: loaded from: classes7.dex */
public final class l implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f62750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f62751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f62752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProfileSettingTitleLayout f62753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProfileSettingTitleLayout f62754e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TitleLayout f62755f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ProfileSettingTitleLayout f62756g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextView f62757h;

    private l(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ProfileSettingTitleLayout profileSettingTitleLayout, ProfileSettingTitleLayout profileSettingTitleLayout2, TitleLayout titleLayout, ProfileSettingTitleLayout profileSettingTitleLayout3, TextView textView) {
        this.f62750a = constraintLayout;
        this.f62751b = imageView;
        this.f62752c = imageView2;
        this.f62753d = profileSettingTitleLayout;
        this.f62754e = profileSettingTitleLayout2;
        this.f62755f = titleLayout;
        this.f62756g = profileSettingTitleLayout3;
        this.f62757h = textView;
    }

    public static l a(View view) {
        int i11 = R$id.ivAvatar;
        ImageView imageView = (ImageView) g4.b.a(view, i11);
        if (imageView != null) {
            i11 = R$id.ivRight;
            ImageView imageView2 = (ImageView) g4.b.a(view, i11);
            if (imageView2 != null) {
                i11 = R$id.titleBirth;
                ProfileSettingTitleLayout profileSettingTitleLayout = (ProfileSettingTitleLayout) g4.b.a(view, i11);
                if (profileSettingTitleLayout != null) {
                    i11 = R$id.titleGender;
                    ProfileSettingTitleLayout profileSettingTitleLayout2 = (ProfileSettingTitleLayout) g4.b.a(view, i11);
                    if (profileSettingTitleLayout2 != null) {
                        i11 = R$id.titleLayout;
                        TitleLayout titleLayout = (TitleLayout) g4.b.a(view, i11);
                        if (titleLayout != null) {
                            i11 = R$id.titleRegion;
                            ProfileSettingTitleLayout profileSettingTitleLayout3 = (ProfileSettingTitleLayout) g4.b.a(view, i11);
                            if (profileSettingTitleLayout3 != null) {
                                i11 = R$id.tvNickName;
                                TextView textView = (TextView) g4.b.a(view, i11);
                                if (textView != null) {
                                    return new l((ConstraintLayout) view, imageView, imageView2, profileSettingTitleLayout, profileSettingTitleLayout2, titleLayout, profileSettingTitleLayout3, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_profile_edit, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f62750a;
    }
}
