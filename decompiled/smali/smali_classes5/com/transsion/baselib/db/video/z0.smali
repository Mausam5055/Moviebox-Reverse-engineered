.class public final synthetic Lcom/transsion/baselib/db/video/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Lcom/transsion/baselib/db/video/d1;->C(Ljava/lang/String;Lz3/b;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
