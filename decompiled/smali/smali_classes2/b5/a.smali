.class public Lb5/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/charset/Charset;

.field private b:La5/g1;

.field private c:Ly4/h;

.field private d:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field private e:[La5/h1;

.field private f:[Lcom/alibaba/fastjson/parser/Feature;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lb5/a;->a:Ljava/nio/charset/Charset;

    invoke-static {}, La5/g1;->g()La5/g1;

    move-result-object v0

    iput-object v0, p0, Lb5/a;->b:La5/g1;

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    iput-object v0, p0, Lb5/a;->c:Ly4/h;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lb5/a;->d:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-array v1, v3, [La5/h1;

    iput-object v1, p0, Lb5/a;->e:[La5/h1;

    new-array v1, v3, [Lcom/alibaba/fastjson/parser/Feature;

    iput-object v1, p0, Lb5/a;->f:[Lcom/alibaba/fastjson/parser/Feature;

    iput-boolean v0, p0, Lb5/a;->g:Z

    return-void
.end method
