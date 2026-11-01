.class public final synthetic Landroidx/work/impl/model/h1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/h1;->a:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/work/impl/model/h1;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/h1;->a:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/work/impl/model/h1;->b:J

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Landroidx/work/impl/model/r1;->a0(Ljava/lang/String;JLz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
