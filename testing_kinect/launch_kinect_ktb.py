import cv2
import ktb

k = ktb.Kinect()
while True:
    # Specify as many types as you want here
    color_frame = k.get_frame(ktb.COLOR)

    cv2.imshow('frame', color_frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break