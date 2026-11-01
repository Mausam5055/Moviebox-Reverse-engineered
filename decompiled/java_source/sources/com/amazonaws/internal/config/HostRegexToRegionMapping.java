package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
public class HostRegexToRegionMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18415b;

    public HostRegexToRegionMapping(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
        }
        try {
            Pattern.compile(str);
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
            }
            this.f18414a = str;
            this.f18415b = str2;
        } catch (PatternSyntaxException e11) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", e11);
        }
    }

    public String a() {
        return this.f18414a;
    }

    public String b() {
        return this.f18415b;
    }
}
