# Codebook

## Experiment Details and Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Feature Description

1. Subject.ID - The ID provided for the volunteer. Value ranges from 1 to 30.
2. Activity.ID - The ID for one of the 6 activities performed by the volunteer. Value Ranges from 1 to 6.
3. Activity - The activity name corresponding to the Activity ID. Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
4. Time.Body.Acc.mean.X - Mean of subject's body acceleration (X Component)
5. Time.Body.Acc.mean.Y - Mean of subject's body acceleration (Y Component)
6. Time.Body.Acc.mean.Z - Mean of subject's body acceleration (Z Component)
7. Time.Body.Acc.std.X - Standard Deviation of subject's body acceleration (X Component)
8. Time.Body.Acc.std.Y - Standard Deviation of subject's body acceleration (Y Component)
9. Time.Body.Acc.std.Z - Standard Deviation of subject's body acceleration (Z Component)
10. Time.Gravity.Acc.mean.X - Mean of subject's gravity acceleration (X Component)
11. Time.Gravity.Acc.mean.Y - Mean of subject's gravity acceleration (Y Component)
12. Time.Gravity.Acc.mean.Z - Mean of subject's gravity acceleration (Z Component)
13. Time.Gravity.Acc.std.X - Standard Deviation of subject's gravity acceleration (X Component)
14. Time.Gravity.Acc.std.Y - Standard Deviation of subject's gravity acceleration (Y Component)
15. Time.Gravity.Acc.std.Z - Standard Deviation of subject's gravity acceleration (Z Component)
16. Time.Body.Acc.Jerk.mean.X - Mean of subject's body jerk acceleration (X Component)
17. Time.Body.Acc.Jerk.mean.Y - Mean of subject's body jerk acceleration (Y Component)
18. Time.Body.Acc.Jerk.mean.Z - Mean of subject's body jerk acceleration (Z Component)
19. Time.Body.Acc.Jerk.std.X - Standard Deviation of subject's body jerk acceleration (X Component)
20. Time.Body.Acc.Jerk.std.Y - Standard Deviation of subject's body jerk acceleration (Y Component)
21. Time.Body.Acc.Jerk.std.Z - Standard Deviation of subject's body jerk acceleration (Z Component)
22. Time.Body.Gyro.mean.X - Mean of subject's body's angular velocity (X Component)
23. Time.Body.Gyro.mean.Y - Mean of subject's body's angular velocity (Y Component)
24. Time.Body.Gyro.mean.Z - Mean of subject's body's angular velocity (Z Component)
25. Time.Body.Gyro.std.X - Standard Deviation of subject's body's angular velocity (X Component)
26. Time.Body.Gyro.std.Y - Standard Deviation of subject's body's angular velocity (Y Component)
27. Time.Body.Gyro.std.Z - Standard Deviation of subject's body's angular velocity (Z Component)
28. Time.Body.Gyro.Jerk.mean.X - Mean of subject's body's jerk angular velocity (X Component)
29. Time.Body.Gyro.Jerk.mean.Y - Mean of subject's body's jerk angular velocity (Y Component)
30. Time.Body.Gyro.Jerk.mean.Z - Mean of subject's body's jerk angular velocity (Z Component)
31. Time.Body.Gyro.Jerk.std.X - Standard Deviation of subject's body's jerk angular velocity (X Component)
32. Time.Body.Gyro.Jerk.std.Y - Standard Deviation of subject's body's jerk angular velocity (Y Component)
33. Time.Body.Gyro.Jerk.std.Z - Standard Deviation of subject's body's jerk angular velocity (Z Component)
34. Time.Body.Acc.Mag.mean - Mean of the magnitude of subject's body acceleration considering all the 3 components and calculated using euclidean norm
35. Time.Body.Acc.Mag.std - Standard Deviation of the magnitude of subject's body acceleration considering all the 3 components and calculated using euclidean norm
36. Time.Gravity.Acc.Mag.mean - Mean of the magnitude of subject's gravity acceleration considering all the 3 components and calculated using euclidean norm
37. Time.Gravity.Acc.Mag.std - Standard Deviation of the magnitude of subject's gravity acceleration considering all the 3 components and calculated using euclidean norm
38. Time.Body.Acc.Jerk.Mag.mean - Mean of the magnitude of subject's body jerk acceleration considering all the 3 components and calculated using euclidean norm
39. Time.Body.Acc.Jerk.Mag.std - Standard Deviation of the magnitude of subject's body jerk acceleration considering all the 3 components and calculated using euclidean norm
40. Time.Body.Gyro.Mag.mean - Mean of the magnitude of subject's body's angular velocity considering all the 3 components and calculated using euclidean norm
41. Time.Body.Gyro.Mag.std - Standard Deviation of the magnitude of subject's body's angular velocity considering all the 3 components and calculated using euclidean norm
42. Time.Body.Gyro.Jerk.Mag.mean - Mean of the magnitude of subject's body's jerk angular velocity considering all the 3 components and calculated using euclidean norm
43. Time.Body.Gyro.Jerk.Mag.std - Standard Deviation of the magnitude of subject's body's jerk angular velocity considering all the 3 components and calculated using euclidean norm
44. Freq.Body.Acc.mean.X - Mean of subject's body acceleration converted to frequency through FFT (X Component)
45. Freq.Body.Acc.mean.Y - Mean of subject's body acceleration converted to frequency through FFT (Y Component)
46. Freq.Body.Acc.mean.Z - Mean of subject's body acceleration converted to frequency through FFT (Z Component)
47. Freq.Body.Acc.std.X - Standard Deviation of subject's body acceleration converted to frequency through FFT(X Component)
48. Freq.Body.Acc.std.Y - Standard Deviation of subject's body acceleration converted to frequency through FFT(Y Component)
49. Freq.Body.Acc.std.Z - Standard Deviation of subject's body acceleration converted to frequency through FFT(Z Component)
50. Freq.Body.Acc.meanFreq.X - Weighted average of the frequency components of subject's body acceleration converted to frequency through FFT(X Component)
51. Freq.Body.Acc.meanFreq.Y - Weighted average of the frequency components of subject's body acceleration converted to frequency through FFT(Y Component)
52. Freq.Body.Acc.meanFreq.Z - Weighted average of the frequency components of subject's body acceleration converted to frequency through FFT(Z Component)
53. Freq.Body.Acc.Jerk.mean.X - Mean of subject's body's jerk acceleration converted to frequency through FFT (X Component)
54. Freq.Body.Acc.Jerk.mean.Y - Mean of subject's body's jerk acceleration converted to frequency through FFT (Y Component)
55. Freq.Body.Acc.Jerk.mean.Z - Mean of subject's body's jerk acceleration converted to frequency through FFT (Z Component)
56. Freq.Body.Acc.Jerk.std.X - Standard Deviation of subject's body's jerk acceleration converted to frequency through FFT (X Component)
57. Freq.Body.Acc.Jerk.std.Y - Standard Deviation of subject's body's jerk acceleration converted to frequency through FFT (Y Component)
58. Freq.Body.Acc.Jerk.std.Z - Standard Deviation of subject's body's jerk acceleration converted to frequency through FFT (Z Component)
59. Freq.Body.Acc.Jerk.meanFreq.X - Weighted average of the frequency components of subject's body's jerk acceleration converted to frequency through FFT (X Component)
60. Freq.Body.Acc.Jerk.meanFreq.Y - Weighted average of the frequency components of subject's body's jerk acceleration converted to frequency through FFT (Y Component)
61. Freq.Body.Acc.Jerk.meanFreq.Z - Weighted average of the frequency components of subject's body's jerk acceleration converted to frequency through FFT (Z Component)
62. Freq.Body.Gyro.mean.X - Mean of subject's body's angular velocity converted to frequency through FFT (X Component)
63. Freq.Body.Gyro.mean.Y - Mean of subject's body's angular velocity converted to frequency through FFT (Y Component)
64. Freq.Body.Gyro.mean.Z - Mean of subject's body's angular velocity converted to frequency through FFT (Z Component)
65. Freq.Body.Gyro.std.X - Standard Deviation of subject's body's angular velocity converted to frequency through FFT (X Component)
66. Freq.Body.Gyro.std.Y - Standard Deviation of subject's body's angular velocity converted to frequency through FFT (Y Component)
67. Freq.Body.Gyro.std.Z - Standard Deviation of subject's body's angular velocity converted to frequency through FFT (Z Component)
68. Freq.Body.Gyro.meanFreq.X - Weighted average of the frequency components of subject's body's angular velocity converted to frequency through FFT (X Component)
69. Freq.Body.Gyro.meanFreq.Y - Weighted average of the frequency components of subject's body's angular velocity converted to frequency through FFT (Y Component)
70. Freq.Body.Gyro.meanFreq.Z - Weighted average of the frequency components of subject's body's angular velocity converted to frequency through FFT (Z Component)
71. Freq.Body.Acc.Mag.mean - Mean of the magnitude of subject's body acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
72. Freq.Body.Acc.Mag.std - Standard Deviation of the magnitude of subject's body acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
73. Freq.Body.Acc.Mag.meanFreq - Weighted Frequency of the magnitude of Mean of subject's body acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
74. Freq.Body.BodyAcc.Jerk.Mag.mean - Mean of the magnitude of subject's body's jerk acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
75. Freq.Body.BodyAcc.Jerk.Mag.std - Standard Deviation of the magnitude of subject's body's jerk acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
76. Freq.Body.BodyAcc.Jerk.Mag.meanFreq - Mean of the magnitude of subject's body's jerk acceleration converted to frequency through FFT and calculated from the three components using euclidean norm
77. Freq.Body.BodyGyro.Mag.mean - Weighted Frequency Mean of the magnitude of subject's body's angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
78. Freq.Body.BodyGyro.Mag.std - Standard Deviation of the magnitude of subject's body's angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
79. Freq.Body.BodyGyro.Mag.meanFreq - Weighted Frequency Mean of the magnitude of subject's body's angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
80. Freq.Body.BodyGyro.Jerk.Mag.mean - Mean of the magnitude of subject's body's jerk angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
81. Freq.Body.BodyGyro.Jerk.Mag.std - Standard Deviation of the magnitude of subject's body's jerk angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
82. Freq.Body.BodyGyro.Jerk.Mag.meanFreq - Weighted Frequency Mean of the magnitude of subject's body's jerk angular velocity converted to frequency through FFT and calculated from the three components using euclidean norm
