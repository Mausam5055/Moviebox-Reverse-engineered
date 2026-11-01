.class public final synthetic Lum/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lum/l;


# direct methods
.method public synthetic constructor <init>(Lum/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum/j;->a:Lum/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lum/j;->a:Lum/l;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lum/l;->y(Lum/l;Ljava/util/Map;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
