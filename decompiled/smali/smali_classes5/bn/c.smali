.class public final synthetic Lbn/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lbn/d;


# direct methods
.method public synthetic constructor <init>(Lbn/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/c;->a:Lbn/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbn/c;->a:Lbn/d;

    invoke-static {v0}, Lbn/d;->y(Lbn/d;)Laq/c;

    move-result-object v0

    return-object v0
.end method
