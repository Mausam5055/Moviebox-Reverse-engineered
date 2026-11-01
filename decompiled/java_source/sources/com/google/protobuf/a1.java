package com.google.protobuf;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
final class a1 {
    private final Field caseField;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f32810id;
    private final Field valueField;

    public a1(int i11, Field field, Field field2) {
        this.f32810id = i11;
        this.caseField = field;
        this.valueField = field2;
    }

    public Field getCaseField() {
        return this.caseField;
    }

    public int getId() {
        return this.f32810id;
    }

    public Field getValueField() {
        return this.valueField;
    }
}
