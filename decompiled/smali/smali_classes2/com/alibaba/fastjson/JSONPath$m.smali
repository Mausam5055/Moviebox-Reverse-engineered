.class Lcom/alibaba/fastjson/JSONPath$m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# static fields
.field public static final a:Lcom/alibaba/fastjson/JSONPath$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$m;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$m;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$m;->a:Lcom/alibaba/fastjson/JSONPath$m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
