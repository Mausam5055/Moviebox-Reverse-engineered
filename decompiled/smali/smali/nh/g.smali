.class public final synthetic Lnh/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lnh/l;


# direct methods
.method public synthetic constructor <init>(Lnh/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh/g;->a:Lnh/l;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnh/g;->a:Lnh/l;

    invoke-static {v0}, Lnh/l;->g(Lnh/l;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
