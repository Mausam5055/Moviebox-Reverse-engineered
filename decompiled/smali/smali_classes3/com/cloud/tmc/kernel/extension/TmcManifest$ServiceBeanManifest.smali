.class public Lcom/cloud/tmc/kernel/extension/TmcManifest$ServiceBeanManifest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/extension/TmcManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceBeanManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field beanObject:Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$ServiceBeanManifest;->beanClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$ServiceBeanManifest;->beanObject:Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;

    return-void
.end method
