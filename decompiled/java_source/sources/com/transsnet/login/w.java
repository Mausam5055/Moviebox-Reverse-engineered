package com.transsnet.login;

import android.content.Context;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.web.api.WebPageIdentity;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f60568a = new w();

    public static final class a extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f60569a;

        a(Context context) {
            this.f60569a = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), widget.getContext(), null, 2, null);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(this.f60569a, R$color.login_color_policy_link));
            ds2.setUnderlineText(true);
            ds2.clearShadowLayer();
        }
    }

    public static final class b extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f60570a;

        b(Context context) {
            this.f60570a = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Intrinsics.h(widget, "widget");
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-terms-of-use.html"), widget.getContext(), null, 2, null);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds2) {
            Intrinsics.h(ds2, "ds");
            super.updateDrawState(ds2);
            ds2.setColor(androidx.core.content.b.getColor(this.f60570a, R$color.login_color_policy_link));
            ds2.setUnderlineText(true);
            ds2.clearShadowLayer();
        }
    }

    private w() {
    }

    public final void a(Context context, AppCompatTextView tvPrivacy) {
        Intrinsics.h(context, "context");
        Intrinsics.h(tvPrivacy, "tvPrivacy");
        String string = context.getString(R$string.login_sign_up_privacy);
        Intrinsics.g(string, "getString(...)");
        String string2 = context.getString(R$string.login_privacy);
        Intrinsics.g(string2, "getString(...)");
        String string3 = context.getString(R$string.login_user_agreement);
        Intrinsics.g(string3, "getString(...)");
        SpannableString spannableString = new SpannableString(string);
        a aVar = new a(context);
        b bVar = new b(context);
        int iK0 = StringsKt.k0(string, string2, 0, true);
        int iK1 = StringsKt.k0(string, string3, 0, true);
        if (iK0 < 0) {
            iK0 = 0;
        }
        int i11 = iK1 >= 0 ? iK1 : 0;
        spannableString.setSpan(aVar, iK0, string2.length() + iK0, 33);
        spannableString.setSpan(bVar, i11, string3.length() + i11, 33);
        tvPrivacy.setText(spannableString);
        tvPrivacy.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
