.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsdivOemHookCallback"
.end annotation


# instance fields
.field private ant_config:I

.field private band:I

.field private carrier:I

.field public mMsg:Landroid/os/Message;

.field private tech:I


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 522
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->tech:I

    .line 516
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->carrier:I

    .line 517
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->ant_config:I

    .line 518
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->band:I

    .line 523
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->mMsg:Landroid/os/Message;

    .line 524
    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .locals 3
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I

    .line 529
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->mMsg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 531
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 532
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 534
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->tech:I

    .line 535
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->carrier:I

    .line 536
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->ant_config:I

    .line 537
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->band:I

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->tech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "carrier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->carrier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ant_config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->ant_config:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 540
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->ant_config:I

    packed-switch v1, :pswitch_data_0

    .line 554
    const-string v1, "not valid result"

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 551
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    :pswitch_0
    const-string v1, "asdiv enabled: ASDIV status is SWAP!"

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 552
    goto :goto_0

    .line 548
    :pswitch_1
    const-string v1, "asdiv enabled: ASDIV status is PT!"

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 549
    goto :goto_0

    .line 545
    :pswitch_2
    const-string v1, "asdiv enabled"

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 546
    goto :goto_0

    .line 542
    :pswitch_3
    const-string v1, "asdiv disabled"

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 543
    nop

    .line 559
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return msg id is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;->mMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 562
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
