.class public final Lcom/alibaba/fastjson/util/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Lcom/alibaba/fastjson/util/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/g$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    iput p3, p0, Lcom/alibaba/fastjson/util/g$a;->a:I

    return-void
.end method
