.class public final Lcom/therouter/history/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/history/d;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/therouter/history/b;->a:Ljava/lang/String;

    return-void
.end method
