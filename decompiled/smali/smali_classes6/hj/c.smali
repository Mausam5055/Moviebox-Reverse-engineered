.class public final synthetic Lhj/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lhj/c;->b:Ljava/util/Map;

    iput p3, p0, Lhj/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lhj/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lhj/c;->b:Ljava/util/Map;

    iget v2, p0, Lhj/c;->c:I

    invoke-static {v0, v1, v2}, Lhj/i;->e(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method
