FROM tensorflow/tensorflow:latest-gpu-jupyter

WORKDIR /work

RUN python3 -m pip install numpy matplotlib seaborn pandas statsmodels scipy scikit-learn

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/work --ip 0.0.0.0 --no-browser --allow-root"]