.class public interface abstract Lcom/cloud/tmc/kernel/api/classloader/ClassLoaderFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.kernel.api.classloader.DefaultClassLoaderFactory"
.end annotation


# virtual methods
.method public abstract getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
.end method
