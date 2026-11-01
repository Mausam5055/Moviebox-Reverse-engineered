.class public final synthetic Llo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Llo/e;


# direct methods
.method public synthetic constructor <init>(Llo/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo/c;->a:Llo/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llo/c;->a:Llo/e;

    invoke-static {v0}, Llo/e;->e(Llo/e;)Lcom/transsion/player/shorttv/preload/g;

    move-result-object v0

    return-object v0
.end method
