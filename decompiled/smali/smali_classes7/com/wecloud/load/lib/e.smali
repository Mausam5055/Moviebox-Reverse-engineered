.class public final synthetic Lcom/wecloud/load/lib/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Landroid/os/Parcel;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wecloud/load/lib/e;->a:Landroid/os/Parcel;

    iput-object p2, p0, Lcom/wecloud/load/lib/e;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/wecloud/load/lib/e;->a:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/wecloud/load/lib/e;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/wecloud/load/lib/h$a;->Y0(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method
