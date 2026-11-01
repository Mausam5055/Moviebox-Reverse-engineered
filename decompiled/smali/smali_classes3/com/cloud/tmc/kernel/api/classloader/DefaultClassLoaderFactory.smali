.class public Lcom/cloud/tmc/kernel/api/classloader/DefaultClassLoaderFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/api/classloader/ClassLoaderFactory;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 0

    const-class p1, Lcom/cloud/tmc/kernel/api/classloader/DefaultClassLoaderFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method
