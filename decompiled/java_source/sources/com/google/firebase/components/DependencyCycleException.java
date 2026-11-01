package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
import mb.c;

/* JADX INFO: loaded from: classes4.dex */
public class DependencyCycleException extends DependencyException {
    private final List<c> componentsInCycle;

    public DependencyCycleException(List<c> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<c> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
