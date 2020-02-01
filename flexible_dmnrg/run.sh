cp input_files/anderson_model_U1_c_SU2_s.dat ./input.dat
sed -i -e "s/En = -0.5/En = 0.0/g" input.dat 
sed -i -e "s/U = 1.0/U = 0.0/g" input.dat 
./fnrg
./sfb
cp results/anderson_model_lambda_2.000000_max_states_100_iter_40_T_0.000000_symmetries_U\(1\)SU\(2\)_En_0.000000_U_0.000000_t_0.250000/spectral_function_dmnrg_d_dagger_d_dagger_b_0.700000.dat ./spectral_func_U_0.00.dat
cp input_files/anderson_model_U1_c_SU2_s.dat ./input.dat
sed -i -e "s/En = -0.5/En = -0.125/g" input.dat 
sed -i -e "s/U = 1.0/U = 0.25/g" input.dat 
./fnrg
./sfb
cp results/anderson_model_lambda_2.000000_max_states_100_iter_40_T_0.000000_symmetries_U\(1\)SU\(2\)_En_0.000000_U_0.000000_t_0.250000/spectral_function_dmnrg_d_dagger_d_dagger_b_0.700000.dat ./spectral_func_U_0.25.dat
cp input_files/anderson_model_U1_c_SU2_s.dat ./input.dat
sed -i -e "s/En = -0.5/En = -0.25/g" input.dat 
sed -i -e "s/U = 1.0/U = 0.5/g" input.dat 
./fnrg
./sfb
cp results/anderson_model_lambda_2.000000_max_states_100_iter_40_T_0.000000_symmetries_U\(1\)SU\(2\)_En_0.000000_U_0.000000_t_0.250000/spectral_function_dmnrg_d_dagger_d_dagger_b_0.700000.dat ./spectral_func_U_0.50.dat
cp input_files/anderson_model_U1_c_SU2_s.dat ./input.dat
sed -i -e "s/En = -0.5/En = -0.375/g" input.dat 
sed -i -e "s/U = 1.0/U = 0.75/g" input.dat 
./fnrg
./sfb
cp results/anderson_model_lambda_2.000000_max_states_100_iter_40_T_0.000000_symmetries_U\(1\)SU\(2\)_En_0.000000_U_0.000000_t_0.250000/spectral_function_dmnrg_d_dagger_d_dagger_b_0.700000.dat ./spectral_func_U_0.75.dat
cp input_files/anderson_model_U1_c_SU2_s.dat ./input.dat
./fnrg
./sfb
cp results/anderson_model_lambda_2.000000_max_states_100_iter_40_T_0.000000_symmetries_U\(1\)SU\(2\)_En_0.000000_U_0.000000_t_0.250000/spectral_function_dmnrg_d_dagger_d_dagger_b_0.700000.dat ./spectral_func_U_1.00.dat
