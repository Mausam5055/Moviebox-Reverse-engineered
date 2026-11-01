package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f18644a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f18645b = Pattern.compile("rule-id=\"(.*?)\"");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Log f18646c = LogFactory.b(ObjectExpirationHeaderHandler.class);

    private Date c(String str) {
        Matcher matcher = f18644a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.e(matcher.group(1));
        } catch (Exception e11) {
            f18646c.i("Error parsing expiry-date from x-amz-expiration header.", e11);
            return null;
        }
    }

    private String d(String str) {
        Matcher matcher = f18645b.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(ObjectExpirationResult objectExpirationResult, HttpResponse httpResponse) {
        String str = (String) httpResponse.c().get("x-amz-expiration");
        if (str != null) {
            objectExpirationResult.setExpirationTime(c(str));
            objectExpirationResult.setExpirationTimeRuleId(d(str));
        }
    }
}
