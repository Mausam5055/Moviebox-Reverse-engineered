package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f18647a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f18648b = Pattern.compile("ongoing-request=\"(.*?)\"");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Log f18649c = LogFactory.b(ObjectRestoreHeaderHandler.class);

    private Boolean c(String str) {
        Matcher matcher = f18648b.matcher(str);
        if (matcher.find()) {
            return Boolean.valueOf(Boolean.parseBoolean(matcher.group(1)));
        }
        return null;
    }

    private Date d(String str) {
        Matcher matcher = f18647a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.e(matcher.group(1));
        } catch (Exception e11) {
            f18649c.i("Error parsing expiry-date from x-amz-restore header.", e11);
            return null;
        }
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(ObjectRestoreResult objectRestoreResult, HttpResponse httpResponse) {
        String str = (String) httpResponse.c().get("x-amz-restore");
        if (str != null) {
            objectRestoreResult.setRestoreExpirationTime(d(str));
            Boolean boolC = c(str);
            if (boolC != null) {
                objectRestoreResult.setOngoingRestore(boolC.booleanValue());
            }
        }
    }
}
