.class public final synthetic Llj/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llj/k0;->a:J

    iput-object p3, p0, Llj/k0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Llj/k0;->a:J

    iget-object v2, p0, Llj/k0;->b:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Llj/l0;->Z(JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
