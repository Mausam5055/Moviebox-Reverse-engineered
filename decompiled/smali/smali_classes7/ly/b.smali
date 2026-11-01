.class public final synthetic Lly/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lly/c;


# direct methods
.method public synthetic constructor <init>(Lly/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly/b;->a:Lly/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lly/b;->a:Lly/c;

    invoke-static {v0}, Lly/c;->y(Lly/c;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
