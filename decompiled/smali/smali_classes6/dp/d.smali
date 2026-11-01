.class public final synthetic Ldp/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ldp/e;


# direct methods
.method public synthetic constructor <init>(Ldp/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp/d;->a:Ldp/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldp/d;->a:Ldp/e;

    invoke-static {v0}, Ldp/e;->e(Ldp/e;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
