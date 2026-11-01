.class public final synthetic Lao/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lao/e;


# direct methods
.method public synthetic constructor <init>(Lao/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao/d;->a:Lao/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lao/d;->a:Lao/e;

    invoke-static {v0}, Lao/e;->a(Lao/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
