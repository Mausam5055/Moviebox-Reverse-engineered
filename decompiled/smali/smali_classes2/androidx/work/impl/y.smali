.class public final Landroidx/work/impl/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/work/impl/model/x;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/x;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/y;->a:Landroidx/work/impl/model/x;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/impl/model/x;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/y;->a:Landroidx/work/impl/model/x;

    return-object v0
.end method
